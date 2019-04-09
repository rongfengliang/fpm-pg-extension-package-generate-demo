EXTENSION = example
DATA = example--0.1.sql  # script files to install
# REGRESS = example_test     # our test script file (without extension)
MODULES = example          # our c module file to build

# postgres build stuff
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
