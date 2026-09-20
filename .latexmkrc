# Build the embedded University of Lorraine cover from its standalone source.
add_cus_dep('tex', 'pdf', 0, 'make_exemple_frontpage');

sub make_exemple_frontpage {
    my ($base_name) = @_;
    return 0 unless $base_name =~ m{(?:^|/)papers/TUL/exemple$};

    my $result = system(
        'cd papers/TUL && pdflatex -interaction=nonstopmode -halt-on-error exemple.tex'
    );
    return $result;
}
