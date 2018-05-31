#!/bin/sh
scriptdir=`dirname $0`

java -mx1000m -cp "$scriptdir/stanford-ner.jar:$scriptdir/lib/*" edu.stanford.nlp.ie.NERServer -loadClassifier $scriptdir/classifiers/english.conll.4class.distsim.crf.ser.gz -port ${PORT:-5001}

