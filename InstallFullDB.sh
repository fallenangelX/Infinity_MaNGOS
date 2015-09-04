#!/bin/sh

####################################################################################################
#
#   Simple helper script to insert clean UDB
#
####################################################################################################

#internal use
SCRIPT_FILE="InstallFullDB.sh"
CONFIG_FILE="InstallFullDB.config"
# testing only
ADDITIONAL_PATH=""

#variables assigned and read from $CONFIG_FILE
MANGOS_DBHOST=""
MANGOS_DBNAME=""
MANGOS_DBUSER=""
MANGOS_DBPASS=""
MYSQL=""
CORE_PATH=""
SD2_UPDATES="1"

function create_config {
# Re(create) config file
cat >  $CONFIG_FILE << EOF
####################################################################################################
# This is the config file for the '$SCRIPT_FILE' script
#
# You need to insert
#   MANGOS_DBHOST:	Your MANGOS database host
#   MANGOS_DBNAME:	Your MANGOS database schema
#   MANGOS_DBUSER:	Your MANGOS username
#   MANGOS_DBPASS:	Your MANGOS password
#   CORE_PATH:    	Your path to core's directory (OPTIONAL: Use if you want to apply remaining core updates automatically)
#   ACID_PATH:    	Your path to a git-clone of ACID (OPTIONAL: Use it if you want to install recent downloaded acid)
#   SD2_UPDATES:  	If you want to disable adding ScriptDev2 updates (Has only meaning if CORE_PATH above is set
#   MYSQL:        	Your mysql command (usually mysql)
#
####################################################################################################

## Define the host on which the mangos database resides (typically localhost)
MANGOS_DBHOST="localhost"

## Define the database in which you want to add clean UDB
MANGOS_DBNAME="mangos"

## Define your username
MANGOS_DBUSER="mangos"

## Define your password (It is suggested to restrict read access to this file!)
MANGOS_DBPASS="mangos"

## Define the path to your core's folder (This is optional)
##   If set the core updates located under sql/updates from this mangos-directory will be added automatically
CORE_PATH=""

## Define the path to the folder into which you cloned ACID (This is optional)
##   If set the file acid_wotlk.sql will be applied from this folder
ACID_PATH=""

## Include ScriptDev2 updates? (If set, the SD2-Updates are expected to be located in the place defined at CORE_PATH)
##   NOTE: They are only applied if CORE_PATH is set!
##   Set to 0 if you want core updates BUT no SD2-updates
SD2_UPDATES="1"

## Define your mysql programm if this differs
MYSQL="mysql"

# Enjoy using the tool
EOF
}

function display_help {
echo
echo "Welcome to the UDB helper $SCRIPT_FILE"
echo
echo "Run this tool from a bash compatible terminal (on windows like Git Bash)"
echo
echo "To configure edit the file $CONFIG_FILE"
echo
}

# Check if config file present
if [ ! -f $CONFIG_FILE ]
then
  create_config
  display_help
  exit 1
fi

. $CONFIG_FILE

MYSQL_MANGOSDB_CMD="$MYSQL -h$MANGOS_DBHOST -u$MANGOS_DBUSER -p$MANGOS_DBPASS $MANGOS_DBNAME"

## Print header
echo
echo "Welcome to the UDB helper $SCRIPT_FILE"
echo
echo "ATTENTION: Your database $DATABASE will be reset to UDB!"
echo "Please bring your repositories up-to-date!"
echo "Press CTRL+C to exit"
# show a mini progress bar
for i in {1..19}
do
 echo -ne .
 sleep 1
done
echo .

## Full
echo "Process UDB 0.12.2"
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Full_DB/UDB_0.12.2_mangos_11792_SD2_2279.sql
[[ $? != 0 ]] && exit 1

## 403
echo "Process Updatepack 403"
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/403_corepatch_mangos_11793_to_11840.sql
[[ $? != 0 ]] && exit 1
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/403_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 404
echo "Process Updatepack 404"
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/404_corepatch_mangos_11841_to_11928.sql
[[ $? != 0 ]] && exit 1
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/404_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 405
echo "Process Updatepack 405"
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/405_corepatch_mangos_11929_to_12111.sql
[[ $? != 0 ]] && exit 1
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/405_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 406
echo "Process Updatepack 406"
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/406_corepatch_mangos_12112_to_12444.sql
[[ $? != 0 ]] && exit 1
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/406_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 407
echo "Process Updatepack 407"
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/407_corepatch_mangos_12445_to_12670.sql
[[ $? != 0 ]] && exit 1
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Current_Release/Updates/407_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1


## Change these settings with new updatepacks
LAST_CORE_REV="12936"
LAST_SD2_REV="3153"
## Change these lists when new core or SD2 milestones were released
NEXT_MILESTONES="0.18 0.19 0.20"
NEXT_SD2_MILESTONES="0.8 0.9"


# Process files in Updates folder
echo
echo "Applying additional updates from Updates folder"
echo
for f in Updates/*.sql
do
  CUR_REV=`basename "$f" | sed 's/^\([0-9]*\)_.*/\1/' `
  echo "Applying Update $CUR_REV"
  $MYSQL_MANGOSDB_CMD < "$f"
  [[ $? != 0 ]] && exit 1

  # Was this a core or SD2-update?
  case "$f" in
    *_import_corepatch_*.sql)
      LAST_CORE_REV=`basename "$f" | sed 's/.*_\([0-9]*\)\.sql$/\1/' `
      echo "Applied core update(s up to) $LAST_CORE_REV"
    ;;
    *_import_sd2_*.sql)
      LAST_SD2_REV=`basename "$f" | sed 's/.*_r\([0-9]*\)\.sql$/\1/' `
      echo "Applied SD2 update(s up to) $LAST_SD2_REV"
    ;;
  esac
done

#
# Process core updates if desired
#
if [ "$CORE_PATH" != "" ]
then
  if [ ! -e "$CORE_PATH" ]
  then
    echo "Path to core provided, but directory not found! $CORE_PATH"
    exit 1
  fi

  # Convert path to unix style
  CORE_PATH=`(cd "$CORE_PATH"; pwd)`
#
#               Core updates
#
  echo
  echo
  echo "Applying additional core updates from path $CORE_PATH"
  echo
# process future release folders
  for NEXT_MILESTONE in ${NEXT_MILESTONES};
  do
    # A new milestone was released, apply additional updates
    if [ -e "${CORE_PATH}"/sql/updates/${NEXT_MILESTONE}/ ]
    then
      echo "Apply core updates from milestone $NEXT_MILESTONE"
      for f in "${CORE_PATH}"/sql/updates/${NEXT_MILESTONE}/*_*_mangos_*.sql
      do
        CUR_REV=`basename "$f" | sed 's/^\([0-9]*\)_.*/\1/' `
        if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
        then
          # found a newer core update file
          echo "Append core update `basename "$f"` to database $DATABASE"
          $MYSQL_MANGOSDB_CMD < "$f"
          [[ $? != 0 ]] && exit 1
        fi
      done
    fi
  done

  # Apply remaining files from main folder
  for f in "${CORE_PATH}"/sql/updates/*_*_mangos_*.sql
  do
    CUR_REV=`basename "$f" | sed 's/^\([0-9]*\)_.*/\1/' `
    if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
    then
      # found a newer core update file
      echo "Append core update `basename "$f"` to database $DATABASE"
      $MYSQL_MANGOSDB_CMD < "$f"
      [[ $? != 0 ]] && exit 1
    fi
  done
  echo "All core updates applied"

#
#               ScriptDev2 updates
#
  echo
  echo "Applying additional ScriptDev2 updates from path $CORE_PATH/src/bindings/ScriptDev2"
  echo
# process future release folders
  for NEXT_SD2_MILESTONE in ${NEXT_SD2_MILESTONES}
  do
    # A new milestone was released, apply additional updates
    if [ -e "${CORE_PATH}"/src/bindings/ScriptDev2/sql/updates/${NEXT_SD2_MILESTONE}/ ]
    then
      echo "Apply SD2 updates from milestone $NEXT_SD2_MILESTONE"
      for f in "${CORE_PATH}"/src/bindings/ScriptDev2/sql/updates/${NEXT_SD2_MILESTONE}/r*_mangos.sql
      do
        CUR_REV=`basename "$f" | sed 's/^r\([0-9]*\)_mangos.sql/\1/' `
        if [ "$CUR_REV" -gt "$LAST_SD2_REV" ]
        then
          # found a newer core update file
          echo "Append SD2 update`basename "$f"` to database $DATABASE"
          $MYSQL_MANGOSDB_CMD < "$f"
          [[ $? != 0 ]] && exit 1
        fi
      done
    fi
  done

  # Apply remaining files from main folder
  for f in "${CORE_PATH}"/src/bindings/ScriptDev2/sql/updates/r*_mangos.sql
  do
    CUR_REV=`basename "$f" | sed 's/^r\([0-9]*\)_mangos.sql/\1/' `
    if [ "$CUR_REV" -gt "$LAST_SD2_REV" ]
    then
      # found a newer core update file
      echo "Append SD2 update`basename "$f"` to database $DATABASE"
      $MYSQL_MANGOSDB_CMD < "$f"
      [[ $? != 0 ]] && exit 1
    fi
  done
  echo "All SD2 updates applied"
fi

#
#               ACID Full file
#

if [ "$ACID_PATH" != "" ]
then
  if [ ! -e "$ACID_PATH" ]
  then
    echo "Path to acid provided, but directory not found! $ACID_PATH"
    exit 1
  fi

  # Convert path to unix style
  ACID_PATH=`(cd "$ACID_PATH"; pwd)`

  # Apply acid_wotlk.sql
  echo "Applying $ACID_PATH/acid_wotlk.sql ..."
  $MYSQL_MANGOSDB_CMD < "${ACID_PATH}"/acid_wotlk.sql
  [[ $? != 0 ]] && exit 1
  echo "Recent state of ACID applied"
fi

echo
echo "You have now a clean and recent UDB database loaded into $DATABASE"
echo "Enjoy using UDB"
echo