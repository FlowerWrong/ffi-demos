## Ruby c Extension demo

#### Install

```bash
ruby extconf.rb
make
sudo make install
```

#### Usage in irb

```irb
require 'Demo'
include Demo
demo_sum(1, 4) # => 5
```
