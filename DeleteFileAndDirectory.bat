@rem �����R�[�h�F(UTF8->65001, Shift-JIS->932)
@rem chcp 65001

@echo off
setlocal enabledelayedexpansion
cd %~dp0


@rem �y�ݒ��`�ӏ����z
@rem �폜�Ώۃt�@�C�����i���C���h�J�[�h�w��\�j
set TARGET_FILE=diag-*.png
@rem �폜�Ώۃf�B���N�g�����i���C���h�J�[�h�w��s�j
set TARGET_DIRECTORY=.asciidoctor
@rem �y�ݒ��`�ӏ����z


@rem �t�@�C���폜���s
del /F /S /Q %TARGET_FILE%

@rem �f�B���N�g���폜
for /R %%d in (%TARGET_DIRECTORY%) do rmdir /S /Q %%d
