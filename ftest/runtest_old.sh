#!/bin/bash

main()
{
	mkdir -p testout
	CTRL=ctrl
	# Run fm0
	cd fm0
	eve 1 2 | getmodel | gulcalc -r -S100 -i - > ../testout/gul_c1.bin
	eve 2 2 | getmodel | gulcalc -r -S100 -i - > ../testout/gul_c2.bin
	fmcalc  -o < ../testout/gul_c1.bin | fmtocsv -f > ../testout/fm0_c1.csv
	fmcalc -o < ../testout/gul_c2.bin | fmtocsv -f > ../testout/fm0_c2.csv
	# Run fm1
	cd ../fm1
	fmcalc -o -a1 < ../testout/gul_c1.bin  > ../testout/fm1_c1.bin
	fmcalc -o -a1 < ../testout/gul_c2.bin  > ../testout/fm1_c2.bin
	# Run fm2 
	cd ../fm2
	fmcalc -a1 < ../testout/gul_c1.bin  > ../testout/fm2_c1.bin
	fmcalc -a1 < ../testout/gul_c2.bin  > ../testout/fm2_c2.bin
	# Run fm3
	cd ../fm3
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm3.csv
	# Run fm4
	cd ../fm4
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm4.csv
	# Run fm5
	cd ../fm5
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm5.csv
	# Run fm6
	cd ../fm6
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm6.csv
	# Run fm7
	cd ../fm7
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm7.csv
	# Run fm8
	cd ../fm8
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm8.csv
	# Run fm9
	cd ../fm9
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm9.csv
	# Run fm10
	cd ../fm10
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm10.csv
	# Run fm11
	cd ../fm11
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm11.csv
	# # Run fm12
	cd ../fm12
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm12.csv
	# Run fm13
	cd ../fm13
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm13.csv
	# Run fm14
	cd ../fm14
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm14.csv
	# Run fm15
	cd ../fm15
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm15.csv
	# Run fm16
	cd ../fm16
	fmcalc -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm16.csv
	# Run fm17
	cd ../fm17
	fmcalc -o -a1 < stream/gulitem.bin | fmtocsv -f > ../testout/fm17.csv
	# Run fm18
	cd ../fm18
	fmcalc -o -a2 < stream/gulitem.bin | fmtocsv -f > ../testout/fm18.csv
	# Run fm19
	cd ../fm19
	fmcalc -o -a2 < stream/gulitem.bin | fmtocsv -f > ../testout/fm19.csv
	# Run fm20
	cd ../fm20
	fmcalc -a1 -o  < stream/gulitem.bin | fmtocsv -f > ../testout/fm20.csv
	# Run fm21
	cd ../fm21
	fmcalc -a2 -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm21.csv
	# Run fm22
	cd ../fm22
	fmcalc -a2 -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm22.csv
    # Run fm23
	cd ../fm23
	fmcalc -a1 -p direct -o < stream/gulitem.bin | tee ../testout/fm23_ils.bin | fmtocsv > ../testout/fm23_ils.csv
  	fmcalc -a1 -p ri1 -n -o < ../testout/fm23_ils.bin | tee ../testout/fm23_ri1.bin | fmtocsv > ../testout/fm23_ri1.csv
	fmcalc -a1 -p ri2 -n -o < ../testout/fm23_ri1.bin | fmtocsv > ../testout/fm23_ri2.csv
    # Run fm24
	cd ../fm24
	fmcalc -a2 -o < stream/gulitem.bin | tee ../testout/fm24_ils.bin | fmtocsv > ../testout/fm24_ils.csv
  	fmcalc -a0 -p ri1 -n -o < ../testout/fm24_ils.bin | tee ../testout/fm24_ri1.bin | fmtocsv > ../testout/fm24_ri1.csv
	fmcalc -a2 -p ri2 -n -o < ../testout/fm24_ri1.bin | tee ../testout/fm24_ri2.bin | fmtocsv > ../testout/fm24_ri2.csv
	fmcalc -a2 -p ri3 -n -o < ../testout/fm24_ri2.bin | tee ../testout/fm24_ri3.bin | fmtocsv > ../testout/fm24_ri3.csv
	#fmcalc -p ri4 -n < ../testout/fm24_ri3.bin | tee ../testout/fm24_ri4.bin | fmtocsv > ../testout/fm24_ri4.csv
	cd ../fm25
	fmcalc < stream/gulitem.bin | tee ../testout/fm25_ils.bin | fmtocsv > ../testout/fm25_ils.csv
	cd ../fm26
	fmcalc -a2 -p ri3 -o < stream/fm24_ri2.bin  | fmtocsv > ../testout/fm26.csv
	fmcalc -a2 -p ri3_net -n -o < stream/fm24_ri2.bin  | fmtocsv > ../testout/fm26_net.csv
  	cd ../fm27
	fmcalc -p iteration1 -o < stream/fm24_ri2.bin  | tee ../testout/fm27_it1.bin | fmtocsv > ../testout/fm27_it1.csv
  	fmcalc -p iteration2 -o < ../testout/fm27_it1.bin  | fmtocsv > ../testout/fm27_it2.csv
	cd ../fm28
	fmcalc -a2 -o < stream/gulitem.bin | fmtocsv -f > ../testout/fm28.csv

  	cd ../testout
	md5sum -c ../$CTRL.md5

	if [ "$?" -ne "0" ]; then
	  echo "Sorry check failed\n"
	  exit 1
	else
	  echo "FM tests passed.\n"
	# exit 0
	fi

	# rm *
	cd ../..

}

main
