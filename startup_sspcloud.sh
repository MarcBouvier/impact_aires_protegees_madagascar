#!/bin/sh

# Create variables
WORK_DIR=/home/onyxia/work/impact_aires_protegees_madagascar
REPO_URL=https://github.com/fBedecarrats/impact_aires_protegees_madagascar # As initial

# Git
git clone $REPO_URL $WORK_DIR
chown -R onyxia:users $WORK_DIR

# copy files from S3 
mc cp -r s3/fbedecarrats/diffusion/deforestation_madagascar/data_s3 $WORK_DIR

# Again to give ritghs also in the data subfolder 
chown -R onyxia:users $WORK_DIR

# launch RStudio in the right project
# Copied from InseeLab UtilitR
    echo \
    "
    setHook('rstudio.sessionInit', function(newSession) {
        if (newSession && !identical(getwd(), $WORK_DIR))
        {
            message('On charge directement le bon projet :-) ')
            rstudioapi::openProject('$WORK_DIR')
            rstudioapi::applyTheme('Merbivore')
            }
            }, action = 'append')
            " >> /home/onyxia/work/.Rprofile
