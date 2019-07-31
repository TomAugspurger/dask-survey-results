analyze.md: analyze.ipynb template.tpl
	jupyter nbconvert --to=markdown analyze.ipynb --template=template.tpl
	rsync -r analyze_files/ ../dask-blog/images/analyze_files/
	sed -i 's/analyze_files/\/images\/analyze_files/g' analyze.md
	cp analyze.md ../dask-blog/_posts/2019-07-30-user-survey.md
