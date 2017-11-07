#!/bin/bash
/usr/sbin/sendmail -t << EOF
From: Server.shawnyan
To: shawn2016@aliyun.com
Cc: shawn2016@aliyun.com
Subject: no-reply. This is a system mail.
----------------------------------
This is the mail content ...

mail test.

From Server svn.shawnyan.com
---------------------------------
EOF