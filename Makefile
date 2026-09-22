KDIR ?= /lib/modules/$(shell uname -r)/build

CONFIGS := \
	CONFIG_INTEL_MIC_BUS=m \
	CONFIG_SCIF_BUS=m \
	CONFIG_VOP_BUS=m \
	CONFIG_INTEL_MIC_HOST=m \
	CONFIG_SCIF=m \
	CONFIG_MIC_COSM=m

all modules:
	$(MAKE) -C $(KDIR) M=$(CURDIR) $(CONFIGS) modules

clean:
	$(MAKE) -C $(KDIR) M=$(CURDIR) clean

.PHONY: all modules clean
