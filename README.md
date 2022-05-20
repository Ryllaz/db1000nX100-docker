# db1000nX100 for Docker

It is simplest setup for running [db1000nx100](https://github.com/ihorlv/db1000nX100) as Docker container

## Installation

Clone this repo in any directory at your machine:

```
$ git clone https://github.com/Ryllaz/db1000nX100-docker.git
```

Then go to project root directory and make scripts executable:

```
$ cd /your/path/db1000nX100-docker

$ chmod -x start.bash stop.bash
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

## Info
https://x100.vn.ua/  
https://github.com/Arriven/db1000n  
https://github.com/ihorlv/db1000nX100
