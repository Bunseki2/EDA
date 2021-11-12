
mol load parm7 5280343_MARK4_32-1_80A_v1.prmtop dcd 5280343_MARK4_32-1_80A_v1.100000000.dcd
set a [atomselect top "name CA"]
set atoms [$a get index]
set out [open "indexfile.txt" w]
puts $out $atoms
close $out
#In order to be able to work with the resulting file, you might need a PDB file of only the CAs too:
$a writepdb "5280343_MARK4_32-1_80A_v1_CA_add.pdb"
exit
#Afterwards use catdcd e.g.:
#~/LINUXAMD64/bin/catdcd4.0/catdcd -o 5280343_MARK4_32-1_80A_v1_CA_add.dcd -otype dcd -i indexfile.txt  -dcd 5280343_MARK4_32-1_80A_v1.100000000.dcd


