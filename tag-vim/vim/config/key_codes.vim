function Allmap(mapping)
  execute 'map' a:mapping
  execute 'map!' a:mapping
endfunction


call Allmap('   <ESC>[A         <Up>')
call Allmap('   <ESC>[B         <Down>')
call Allmap('   <ESC>[C         <Right>')
call Allmap('   <ESC>[D         <Left>')
call Allmap('   <ESC>[F         <End>')
call Allmap('   <ESC>[H         <Home>')
call Allmap('   <ESC>[5~        <PageUp>')
call Allmap('   <ESC>[6~        <PageDown>')
call Allmap('   <ESC>[k4~       <C-Left>')
call Allmap('   <ESC>[5D        <C-Left>')
call Allmap('   <ESC>Od         <C-Left>')
call Allmap('   <ESC>[k6~       <C-Right>')
call Allmap('   <ESC>[5C        <C-Right>')
call Allmap('   <ESC>Oc         <C-Right>')
call Allmap('   <ESC>[1;2       <S>')
call Allmap('   <ESC>[1;2A      <S-Up>')
call Allmap('   <ESC>[1;2B      <S-Down>')
call Allmap('   <ESC>[1;2C      <S-Right>')
call Allmap('   <ESC>[1;2D      <S-Left>')
call Allmap('   <ESC>[1;2d      <S-d>')
call Allmap('   <ESC>[1;2x      <S-x>')
call Allmap('   <ESC>[1;2s      <S-s>')
call Allmap('   <ESC>[3~        <Del>')
call Allmap('   <ESC>[1;2h       <S-h>')
call Allmap('   <ESC>[1;2l       <S-l>')


