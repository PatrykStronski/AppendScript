#!/bin/bash

for file in ./dir/*.rmdup_.fs_.txt
do
	different_mapped=$(grep -e "with mate mapped to a different chr (mapQ>=5)" "${file}"| grep -o "^[0-9]*")
	filename=$(basename "${file}")
	animal_name=$(echo "${filename}" | grep -o "^.*[0-9]")
	echo "${animal_name}" >> "${filename}"
	echo "${different_mapped}" >> "${filename}"
done
