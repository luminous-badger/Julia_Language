#!/usr/bin/julia

# Attempt at 'brot in julia.
# JM Sat 16 Sep 21:14:27 BST 2017

X_MIN   = -2.0
X_MAX   =  1.0
Y_MIN   = -1.0
Y_MAX   =  1.0
offset  =  0.1
maxiter =  50
calc_count = 0

for Y = Y_MIN : offset : Y_MAX 
	for X = X_MIN : offset : X_MAX 
		Z = complex( 0, 0 )
		C = complex( X, Y )
		iter_count = 0
		#println("X: ", X, " ", Y, " Z: ", Z, " C: ", C )

		while abs( Z^2 ) < 4 && iter_count < maxiter 
			Z = Z^2 + C
			iter_count += 1
			calc_count += 1
		end # endwhile

		if ( iter_count < maxiter )
			print( " " )
		else
			print( "*" )
		end # if
	end # end x
	println()
end  # end y
		println( "calc_count ", calc_count )
