.class public Lcom/android/commands/input/Input;
.super Ljava/lang/Object;
.source "Input.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Input"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 149
    const-string v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 152
    return-void
.end method

.method private injectPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 155
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 156
    const-string v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectPointerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 159
    return-void
.end method

.method private static final lerp(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 162
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 41
    new-instance v0, Lcom/android/commands/input/Input;

    invoke-direct {v0}, Lcom/android/commands/input/Input;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/input/Input;->run([Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    .line 87
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 53
    .local v0, command:Ljava/lang/String;
    :try_start_0
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    array-length v2, p1

    if-ne v2, v4, :cond_1

    .line 55
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/commands/input/Input;->sendText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 85
    :cond_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Invalid arguments for command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    goto :goto_0

    .line 58
    :cond_2
    :try_start_1
    const-string v2, "keyevent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    array-length v2, p1

    if-ne v2, v4, :cond_1

    .line 60
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, keyCode:I
    if-nez v1, :cond_3

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    .line 64
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->sendKeyEvent(I)V

    goto :goto_0

    .line 67
    .end local v1           #keyCode:I
    :cond_4
    const-string v2, "tap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    array-length v2, p1

    if-ne v2, v5, :cond_1

    .line 69
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/commands/input/Input;->sendTap(FF)V

    goto/16 :goto_0

    .line 72
    :cond_5
    const-string v2, "swipe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    array-length v2, p1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 74
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/commands/input/Input;->sendSwipe(FFFF)V

    goto/16 :goto_0

    .line 79
    :cond_6
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private sendKeyEvent(I)V
    .locals 13
    .parameter "keyCode"

    .prologue
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 124
    .local v1, now:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 126
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 128
    return-void
.end method

.method private sendSwipe(FFFF)V
    .locals 11
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 137
    const/16 v8, 0xb

    .line 138
    .local v8, NUM_STEPS:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 139
    .local v0, now:J
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/commands/input/Input;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 140
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    const/16 v2, 0xb

    if-ge v10, v2, :cond_0

    .line 141
    int-to-float v2, v10

    const/high16 v3, 0x4130

    div-float v9, v2, v3

    .line 142
    .local v9, alpha:F
    const/4 v4, 0x2

    invoke-static {p1, p3, v9}, Lcom/android/commands/input/Input;->lerp(FFF)F

    move-result v5

    invoke-static {p2, p4, v9}, Lcom/android/commands/input/Input;->lerp(FFF)F

    move-result v6

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/commands/input/Input;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 140
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 145
    .end local v9           #alpha:F
    :cond_0
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/commands/input/Input;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 146
    return-void
.end method

.method private sendTap(FF)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, now:J
    move-wide v2, v0

    move v5, p1

    move v6, p2

    move v7, v4

    .line 132
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/commands/input/Input;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 133
    const/4 v9, 0x1

    move-wide v5, v0

    move-wide v7, v0

    move v10, p1

    move v11, p2

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/commands/input/Input;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 134
    return-void
.end method

.method private sendText(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 100
    .local v2, escapeFlag:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 101
    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v7, 0x73

    if-ne v6, v7, :cond_0

    .line 104
    const/16 v6, 0x20

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 105
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 108
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_1

    .line 109
    const/4 v2, 0x1

    .line 100
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 115
    .local v1, chars:[C
    const/4 v6, -0x1

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 116
    .local v5, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual {v5, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 117
    .local v3, events:[Landroid/view/KeyEvent;
    const/4 v4, 0x0

    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_3

    .line 118
    aget-object v6, v3, v4

    invoke-direct {p0, v6}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 120
    :cond_3
    return-void
.end method

.method private showUsage()V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: input ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input text <string>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input keyevent <key code number or name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input tap <x> <y>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input swipe <x1> <y1> <x2> <y2>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    return-void
.end method
