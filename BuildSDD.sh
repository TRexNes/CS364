#!/bin/sh

dir_project="SDD"
dir_sep="/"
final_document_name="CS364_SDD_Document.md"
files_to_add=(
		"~i Title.md"
		"~ii Authors.md"
		"~iii Revision History.md"
		"~iv Table of Contents.md"
		"1.0.0.0.md"
		"1.1.0.0.md"
		"1.2.0.0.md"
		"1.3.0.0.md"
		"1.4.0.0.md"
		"1.5.0.0.md"
		"2.0.0.0.md"
		"3.0.0.0.md"
		"3.1.0.0.md"
		"3.4.0.0.md"
		"3.4.1.0.md"
 		"3.4.1.1.md"
 		"3.4.1.2.md"
 		"3.4.1.3.md"
		"3.4.1.4.md"
		"3.4.1.5.md"
		"3.4.1.6.md"
		"3.4.1.7.md"
		"3.4.1.8.md"
		"3.4.1.9.md"
		"3.4.2.0.md"
		"3.4.2.1.md"
		"3.4.2.2.md"
		"3.4.2.3.md"
		"3.4.2.4.md"
		"3.4.4.0.md"
		"3.4.4.1.md"
		"3.4.4.2.md"
		"3.4.5.0.md"
		"3.4.5.1.md"
		"3.4.5.2.md"
		"3.4.5.3.md"
		"3.4.5.4.md"
		"3.4.6.0.md"
		"3.4.6.1.md"
		"3.4.6.2.md"
		"3.4.6.3.md"
		"3.4.7.0.md"
		"3.4.7.1.md"
		"3.4.7.2.md"
		"3.4.7.3.md"
		"3.4.8.0.md"
		"3.4.8.1.md"
		"3.4.8.2.md"
		"3.4.8.3.md"
		"3.4.8.4.md"
		"4.0.0.0.md"
		"4.1.0.0.md"
		"4.2.0.0.md"
		"4.2.1.0.md"
		"4.3.0.0.md"
		"4.4.0.0.md"
		"5.0.0.0.md"
		"5.1.0.0.md"
		"5.2.0.0.md"
		"5.3.0.0.md"
		"6.0.0.0.md"
		"6.1.0.0.md"
		"6.2.0.0.md"
		"6.2.1.0.md"
		"Index.md"
		)

if [ -f "${dir_project}${dir_sep}${final_document_name}" ]; then
	rm "${dir_project}${dir_sep}${final_document_name}"
fi

for file in "${files_to_add[@]}"
do
	if [ -f "${dir_project}${dir_sep}${file}" ]; then
		cat "${dir_project}${dir_sep}${file}" >> "${dir_project}${dir_sep}${final_document_name}"
	else
		echo "WARNING: File named \"${file}\" not find in directory \"${dir_project}\""
	fi
done

echo "Build Complete"
