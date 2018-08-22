#ls -1 negatives/ > negatives/negatives.txt
#rm -rvf positives
#rm -rvf generate
#opencv_createsamples -img images/iphone.jpg -bg negatives/negatives.txt -info generate/positives.txt -num 3000 -bgcolor 255 -bgthresh 8 -w 40 -h 80 -maxxangle 0.5 -maxyangle 0.5
#mkdir positives
#./bin/crop_image --od=positives/ --pd=generate/ -p=positives.txt
#ls -1 positives/ > positives/positives.txt
./bin/train_HOG --pd=positives/ -p=positives.txt -nd=negatives/ -n=negatives.txt
