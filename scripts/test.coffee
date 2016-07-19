# Description:
#   Test script - never know what it might do
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   !syn - Respond with ack

module.exports = (robot) ->
  robot.hear /^!syn/i, (msg) ->
    msg.reply "ack"
