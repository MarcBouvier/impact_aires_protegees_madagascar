#!/bin/sh

export QUARTO_VERSION="1.2.174"
sudo curl -o quarto-linux-amd64.deb -L https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb
sudo gdebi quarto-linux-amd64.deb -n




# Create variables
WORK_DIR=/home/onyxia/work/impact_aires_protegees_madagascar
REPO_URL=https://${GIT_PERSONAL_ACCESS_TOKEN}@github.com/MarcBouvier/impact_aires_protegees_madagascar.git # As initial

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
        if (newSession && !identical(getwd(), \"'$WORK_DIR'\"))
        {
            message('On charge directement le bon projet :-) ')
            rstudioapi::openProject('$WORK_DIR')
            # For a slick dark theme
            rstudioapi::applyTheme('Merbivore')
            # Console where it should be
            rstudioapi::executeCommand('layoutConsoleOnRight')
            # To free the CTRL+Y shortcut for 'redo'
            }
            }, action = 'append')
            " >> /home/onyxia/work/.Rprofile
