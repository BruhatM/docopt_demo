# author: Tiffany Timbers
#contributer: Bruhat Musunuru
# date: 2020-01-15

"This script prints out docopt args.
Usage: demo.R <arg1> --arg2=<arg2> [--arg3=<arg3>] [--arg4=<arg4>]
Options:
<arg>             Takes any value (this is a required positional argument)
--arg2=<arg2>     Takes any value (this is a required option)
[--arg3=<arg3>]   Takes any value (this is an optional option)
[--arg4=<arg4>]   Takes any value (this is an optional option)
" -> doc

library(docopt)
opt <- docopt(doc)

# define main function
main <- function(opt, arg1 ,arg2, arg3, arg4){
    print(opt)
    print(arg4)
    print(typeof(opt))

}

# call main function
main(opt ,opt$arg1 ,opt$arg2, opt$arg3, opt$arg4)
