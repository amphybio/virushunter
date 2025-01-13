#filtrar base de dados apenas com os identificadores com os pré-fixos AC,NC e NG

databasedir="../database/taxonomy/refseq"
zcat "$databasedir/nucl_gb.accession2taxid.gz" | egrep '^(AC|NC|NG)_' | gzip > "$databasedir/nucl_gb.accession2taxid.filtered.gz"
zcat "$databasedir/prot.accession2taxid.gz" | egrep '^(AC|NC|NG)_' | gzip > "$databasedir/prot.accession2taxid.filtered.gz"