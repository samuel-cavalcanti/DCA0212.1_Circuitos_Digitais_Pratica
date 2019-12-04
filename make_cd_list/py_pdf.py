#!/usr/bin/env python

from fpdf import FPDF
import sys
import os



def createPDF(list_images:list, file_name:str):
    pdf = FPDF()

    for i in list_images:

        pdf.add_page()
        pdf.image(i,-5,-5,220)   
       

    pdf.output(file_name,"F")

    return

def arg_parse()->(str,str):
    dir_path = sys.argv[1]

    output_file = sys.argv[2]

    if len(sys.argv) <3 :
        print("erro, por favor 2 argumentos: dir_path e output_file")

    return  dir_path , output_file

def getting_images_and_sort(dir_path:str)->list:
    print("getting images...")

    images = os.listdir(dir_path)

    images.sort(key=lambda value: int(value.split(".")[0]))

    return [os.path.join(dir_path,image) for image in images ]

def main():

    dir_path, output_file = arg_parse()

    images_path = getting_images_and_sort(dir_path)

    print("creating PDF...")

    createPDF(images_path,output_file)


if __name__ == "__main__":

    main()