package BookWeb;
use Dancer ':syntax';
use Dancer::Plugin::DBIC;
use DateTime;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/books' => sub {
    my $books_rs = schema->resultset('Book');
    
    my @reading = $books_rs->search({
        started => { '!=', undef },
        ended => undef,
    });

    my @read = $books_rs->search({
        ended => { '!=', undef },
    });

    my @to_read = $books_rs->search({
        started => undef,
    });

    template 'books', {
        reading => \@reading,
        read    => \@read,
        to_read => \@to_read,
    };
};

true;
