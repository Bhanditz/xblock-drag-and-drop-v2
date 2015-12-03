# Installs xblock-sdk and dependencies needed to run the tests suite.
# Run this script inside a fresh virtual environment.
pip install -e git://github.com/edx/xblock-sdk.git#egg=xblock-sdk
cd $VIRTUAL_ENV/src/xblock-sdk/ && pip install -r requirements/base.txt \
                                && pip install -r requirements/test.txt && cd -
python setup.py develop
