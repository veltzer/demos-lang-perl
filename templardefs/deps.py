'''
dependencies for this project
'''

def populate(d):
    d.packs=[
        'libnet-github-perl',
        'libconfig-inifiles-perl',
        'libfile-homedir-perl',
        'perl-tk',
    ]

def getdeps():
    return [
        __file__, # myself
    ]
