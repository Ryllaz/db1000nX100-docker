# db1000nX100 for Docker

It is simplest setup for running [db1000nx100](https://github.com/ihorlv/db1000nX100) as Docker container

## Requirements
OS: Linux / MacOS / Windows (with WSL)

## Installation

Clone this repo in any directory at your machine:

```
$ git clone https://github.com/Ryllaz/db1000nX100-docker.git
```

Then go to project root directory and make scripts executable:

```
$ cd /your/path/db1000nX100-docker

$ chmod -x setup.bash start.bash stop.bash
```

Then you can run setup script to prepare config files:

```
$ ./setup.bash
```

Then copy your ovpn files into `put-your-ovpn-files-here` directory. That files can be placed in subdirectories, levels are not limited - they will be searched recursively.

Also you can place file `vpn-provider-config.txt` in same dir with ovpn files.

Available option - `max_connections`.

Example config - `/put-your-ovpn-files-here/your-vpn-provider-1`

## Running

```
$ cd /your/path/db1000nX100-docker

$ ./run.bash
```

Use `stop.bash` for stopping service and removing container.

## Configuration

After running setup script you will get file `put-your-ovpn-files-here/db1000nX100-config-override.txt`. 

It can have next config options.

Default configuration file is `put-your-ovpn-files-here/db1000nX100-config.txt`

| Option                 | Default value | Description                                                                |
|------------------------|---------------|----------------------------------------------------------------------------|
| cpuUsageLimit          | 80            | Maximum CPU usage of the process, precents                                 |
| ramUsageLimit          | 80            | Maximum RAM usage of the process, precents                                 |
| networkUsageLimit      | 90            | Maximum network bandwidth usage of the process, precents                   |
| oneSessionDuration     | 900           | Duration of the session, ms                                                |
| vpnMaxConnectionsLimit | 0             | Maximum number of simultaneous VPN connections                             |
| logsEnabled            | 1             | Enable/disable logging into `put-your-ovpn-files-here/db1000nX100-log.txt` |


## Info
https://x100.vn.ua/  
https://github.com/Arriven/db1000n  
https://github.com/ihorlv/db1000nX100
