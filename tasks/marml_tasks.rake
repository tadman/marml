namespace :marml do
  namespace :build do
    desc "Build Ragel parser as module"
    task :parser do
      sh "cd src && ragel -R marml.rl | rlgen-ruby -o ../lib/marml_parser_engine.rb"
    end

    desc "Build Ragel graph"
    task :graph do
      sh [
        "cd src",
        "ragel -R marml.rl | rlgen-dot -p -o ../test/visualization/marml_parser_engine.dot",
        "cd ../test/visualization",
        "dot -Tpng marml_parser_engine.dot > marml_parser_engine.png"
      ] * ' && '
    end

    desc "Build Ragel graph and open in Preview"
    task :open_graph do
      sh [
        "cd src",
        "ragel -R marml.rl | rlgen-dot -p -o ../test/visualization/marml_parser_engine.dot",
        "cd ../test/visualization",
        "dot -Tpng marml_parser_engine.dot > marml_parser_engine.png",
        "open marml_parser_engine.png"
      ] * ' && '
    end
  end
end