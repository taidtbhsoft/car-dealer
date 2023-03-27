```shell
http://localhost/car-dealer
```

Default account
`demo/demo@123`

## Get Started

### Requirements

* PHP >= 7.4
* [Apache][2] Web Server with [mod_rewrite][3] enabled or [Nginx][4] Web Server
* Latest stable [Phalcon Framework release][5] extension enabled
* [MySQL][6] >= 5.7

### Installation

1. Edit file `app/config/config.php` with your DB connection information
2. If change host, need update `URLROOT`in `app/config/config.php` and public/.htaccess line 4 (RewriteBase) 
3. Run Import DB from `app/db/car_dealer.sql`