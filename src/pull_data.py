import requests
import zipfile
import io

# Sample URL
# 'https://nces.ed.gov/ipeds/datacenter/data/IC2023.zip'
# Institutional characteristics: IC
# Enrollment: E12
# Completions: C

ipeds_data_base_url = 'https://nces.ed.gov/ipeds/datacenter/data'

def download_files(files_list, path_files, path_dictionaries):
    for f in files_list:
        # Data files
        r = requests.get(f'{ipeds_data_base_url}/{f}.zip')
        if r.ok:
            with zipfile.ZipFile(io.BytesIO(r.content), 'r') as zipz:
                zipz.extractall(path_files)
        else:
            print(f'bad file: {f}')

        # Dictionaries
        r = requests.get(f'{ipeds_data_base_url}/{f}_DICT.zip')
        if r.ok:
            with zipfile.ZipFile(io.BytesIO(r.content), 'r') as zipz:
                zipz.extractall(path_dictionaries)
        else:
            print(f'bad file: {f}_DICT')


def pull_data():
    files_institutional_characteristics = [
        'HD2023'
        , 'IC2023'
        # , 'IC2023_AY'
        , 'IC2023_PY'
        # , 'IC2023_CAMPUSES'
    ]
    path_files_institutional_characteristics = '../data/institutional_characteristics'
    path_dictionaries_institutional_characteristics = '../dictionaries/institutional_characteristics'
    download_files(files_institutional_characteristics, path_files_institutional_characteristics, path_dictionaries_institutional_characteristics)

    files_enrollment = [
        'EFFY2023'
        , 'EFFY2023_DIST'
        , 'EFFY2023_HS'
        , 'EFIA2023'
    ]
    path_files_enrollments = '../data/enrollments'
    path_dictionaries_enrollments = '../dictionaries/enrollments'
    download_files(files_enrollment, path_files_enrollments, path_dictionaries_enrollments)

    files_completions = [
        'C2023_A'
        , 'C2023_B'
        , 'C2023_C'
        , 'C2023DEP'
    ]
    path_files_completions = '../data/completions'
    path_dictionaries_completions = '../dictionaries/completions'
    download_files(files_completions, path_files_completions, path_dictionaries_completions)

    # files_all_survey_components = [
    #     'FLAGS2023'
    # ]
    # path_files_all_survey_components = '../data/all_survey_components'
    # path_dictionaries_all_survey_components = '../dictionaries/all_survey_components'
    # download_files(files_all_survey_components, path_files_all_survey_components, path_dictionaries_all_survey_components)
