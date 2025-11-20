#!/usr/bin/env bash

rm -fr tmp
mkdir tmp

wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2025/10/VR_2025-05-20_Z_ENG.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2025/05/VR_2025-04-22_Zapis_ENG.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2025/05/VR_2025_03-25_ENG.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2025/04/VR_2025-01-21-eng.pdf"

wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2024/12/VR_2024_11-26_Zapis_ENG.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2024/12/VR_2024-10-22_Zapis-ENG.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2024/11/VR_2024-06-18_Zapis-ENG.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2024/06/ENG_VR_2024-05-21_Zapis.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2024/05/VR_2024-03-19_Zapis.docx"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2024/03/ENG_VR_2024-01-23_Z.pdf"

wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2024/02/ENG_VR_2023-11-28_Z.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2023/12/VR_2023-10-17_Z_ENG.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2023/10/ENG_VR_2023-05-23_Z.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2023/05/ENG_VR_2023-04-18_Z.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2023/04/VR_2023-03-21_Z.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2023/03/VR_2023-2-21_ZapisZ-1.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2023/02/VR_2023_01_17_Zapis_ENG.pdf"

wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2023/02/ENG_VR_2022-11_22_Z.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2022/07/ENG_VR_2022-06-21_ZZ.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2022/06/ENG_VR_2022-05-24_Z.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2022/04/ENG_VR_2022-03-22_ZZ.docx"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2022/04/ENG_VR_2022-02-15_Z_.docx"

wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2022/01/ENG_VR_2021-12-14_Minutes.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2022/01/ENG_VR_2021-11-23_Minutes.pdf"
wget -q --show-progress -P tmp/ "https://portal.cvut.cz/wp-content/uploads/2022/01/ENG_VR_2021-10-05_Minutes.pdf"

find tmp/*.pdf -exec pdftotext {} \;

mv tmp/*.txt ../data

find tmp/*.docx -exec pandoc -r docx -w markdown \{} -o \{}.md \;

mv tmp/*.md ../data