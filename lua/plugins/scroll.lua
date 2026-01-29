return {
  "karb94/neoscroll.nvim",
  config = function()
    require('neoscroll').setup({
      -- ปุ่มที่จะให้มี Animation (ปกติจะใส่ไว้ครบชุด)
      mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
      hide_cursor = true,          -- ซ่อนเคอร์เซอร์ขณะกำลังเลื่อน (ดูสะอาดตา)
      stop_eof = true,             -- หยุดเลื่อนเมื่อถึงบรรทัดสุดท้าย
      respect_scrolloff = false,   -- ให้หยุดเลื่อนก่อนถึงขอบจอตามค่า scrolloff
      cursor_scroll_step = 1,      -- จำนวนบรรทัดที่เลื่อนต่อกึก (สำหรับเมาส์)
      easing_function = "quadratic", -- รูปแบบความเร็ว (quadratic จะนุ่มนวลช่วงเริ่มและจบ)
    })
  end,
}
