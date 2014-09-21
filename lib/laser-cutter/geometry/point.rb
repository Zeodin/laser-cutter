module Laser
  module Cutter
    module Geometry
      class Point < Tuple
        def customize_args(args)
          if args.first.is_a?(Point)
            return args.first.to_a
          end
          args
        end

        def x= value
          coords[0] = value
        end

        def x
          coords[0]
        end

        def y= value
          coords[1] = value
        end

        def y
          coords[1]
        end

        def separator
          ','
        end

        def hash_keys
          [:x, :y]
        end

        def move_by w, h
          Point.new(x + w, y + h)
        end
      end
    end
  end
end
