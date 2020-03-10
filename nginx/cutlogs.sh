#!/bin/bash
# 指定日志和切割后日志备份的目录
YEAR=$(date +%Y)
MONTH=$(date +%m)
DAY=$(date +%d)
YESTERDAY=$(date -d "yesterday" +%Y-%m-%d)
LOGS_PATH=/data/docker/nginx/logs/
LOGS_BAK_PATH=/data/docker/nginx/logs-bak

# 得到1级目录名
if [[ $(($DAY)) -eq 1 ]]
  then
    if [[ $(($MONTH)) -eq 1 ]]
      then
        LOGS_BAK_PATH=$LOGS_BAK_PATH/$((${YEAR}-1))-12
    else
      if [[ $(($MONTH)) -gt 10 ]]
        then
          LOGS_BAK_PATH=$LOGS_BAK_PATH/${YEAR}-$((${MONTH}-1))
      else
          LOGS_BAK_PATH=$LOGS_BAK_PATH/${YEAR}-0$((${MONTH}-1))
      fi
    fi
else
    LOGS_BAK_PATH=$LOGS_BAK_PATH/${YEAR}-${MONTH}
fi

# 创建目录
mkdir -p $LOGS_BAK_PATH/${YESTERDAY}

# 复制当前的日志文件到备份的目录
cp ${LOGS_PATH}/access.log ${LOGS_BAK_PATH}/${YESTERDAY}/access_${YESTERDAY}.log
#cp ${LOGS_PATH}/admin_access.log ${LOGS_BAK_PATH}/${YESTERDAY}/admin_access_${YESTERDAY}.log
cp ${LOGS_PATH}/error.log ${LOGS_BAK_PATH}/${YESTERDAY}/error_${YESTERDAY}.log

# 清空日志
> ${LOGS_PATH}/access.log
#> ${LOGS_PATH}/admin_access.log
> ${LOGS_PATH}/error.log
