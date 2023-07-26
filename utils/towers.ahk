Place(tower, x, y) {
    if defeated {
        return
    }
    Send(KEYS[tower])
    Sleep(100)
    MouseMove(x,y)
    Sleep(100)
    Click(x,y)          ; Place Tower
    Sleep(200)
}

Targeting(x, y, tabCount) {
    if defeated {
        return
    }
    Click(x,y)          ; Open Tower
    Sleep(100)
    Loop tabCount {
        Send(KEYS["targeting"])
        Sleep(100)
    }
    Send("{Esc}")       ; Close Tower
    Sleep(200)
}

Upgrade(x, y, topCount, middleCount, bottomCount) {
    if defeated {
        return
    }
    Click(x,y)          ; Open Tower
    Sleep(100)
    Loop topCount {
        Send(KEYS["upgrade_1"])
        Sleep(100)
    }
    Loop middleCount {
        Send(KEYS["upgrade_2"])
        Sleep(100)
    }
    Loop bottomCount {
        Send(KEYS["upgrade_3"])
        Sleep(100)
    }
    Send("{Esc}")       ; Close Tower
    Sleep(200)
}

Merge(x, y, sx, sy) {
    if defeated {
        return
    }
    Click(x,y)          ; Open Tower
    Sleep(500)
    ClickImage("buttons\merge", 500, "*TransBlack", 420, 420, 1645, 875)
    Click(sx,sy)
    Sleep(500)
    Send("{Esc}")       ; Close Tower
    Sleep(200)
}

Sell(x, y) {
    if defeated {
        return
    }
    Click(x,y)          ; Open Tower
    Sleep(100)
    Send(KEYS["sell"])  ; Sell Tower
    Sleep(100)
}

Remove(x, y) {
    if defeated {
        return
    }
    Click(x,y)          ; Click on Obstacle
    Sleep(200)
    Click(950,620)      ; Click Confirm
    Sleep(100)
}
