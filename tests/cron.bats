#!/usr/bin/env bats

@test "Check low disk docker cron script can run" {
	run /etc/cron.hourly/docker-low-disk-gc
  echo "status = ${status}"
  echo "output = ${output}"
	[ $status = 0 ]
}

@test "Check docker cron script can run" {
	run /etc/cron.hourly/docker-gc
  echo "status = ${status}"
  echo "output = ${output}"
	[ $status = 0 ]
}
