@rem �����R�[�h�FUTF8
chcp 65001

@echo off
@rem ���̃o�b�`�����݂���f�B���N�g�����J�����g�ɂ���
cd /d %0\..


@rem ���ԃt�@�C��
set TMP_FILE=tmp
@rem �o�̓t�@�C��
set RESULT_FILE=result.txt

@rem �O��t�@�C���폜
del /Q %RESULT_FILE%

@rem �t�@�C������
type *.txt > %TMP_FILE%


@rem �u��
@rem �u���O������
set BEFORE_STR=before
@rem �u���㕶����
set AFTER_STR=after

setlocal enabledelayedexpansion
for /f "delims=" %%A in (%TMP_FILE%) do (
    set line=%%A
    echo !line:%BEFORE_STR%=%AFTER_STR%!>>%RESULT_FILE%
)
endlocal


@rem ���ԃt�@�C���폜
del /Q %TMP_FILE%