
Softwares
Os worflows mais importantes descritos nos documentos a seguir são baseados em funções de softwares externos que incluem principalmente:

  FMRIB Software Library (FSL) - https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation
  MRtrix3 - https://www.mrtrix.org/download/
  Freesurfer - https://surfer.nmr.mgh.harvard.edu/fswiki/DownloadAndInstall
  R (fslr, oasis and myelinmap packages)

Todos sendo disponibilizados atualmente apenas para Linux e Mac

* Para configuração dos pacotes de R checar no tópico de R

Para facilidadade de implementação, sugiro instalar os scripts desenvolvidos pelo grupo que podem ser encontrados em: https://github.com/rafaelsommer1/neuroimage. Para instalá-los via terminal faça o seguinte:

    git clone https://github.com/rafaelsommer1/neuroimage.git
    cd neuroimage
    sudo echo "export SCRIPTS_RCS=`pwd`" >> ~/.bashrc
    sudo echo "export PATH=$PATH:`pwd`/bin" >> ~/.bashrc

Re-abra o terminal e teste:

    lesionMap
    Usage: lesionMap <t1> <t2> <flair>
    Call this script from the top of the files folder

Se houver este resultado, os scripts estão instalados, em caso de erro entrar em contato com rafaelcasommer@gmail.com
