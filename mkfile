

results/%.23andme.txt: data/%.map data/%.ped
	set -x
	mkdir -p results
	plink1.9 \
		--file 'data/'$stem \
		--recode 23 \
		--out 'results/build_'$stem'.23andme' \
	&& rename s#build_## results/*$stem*
