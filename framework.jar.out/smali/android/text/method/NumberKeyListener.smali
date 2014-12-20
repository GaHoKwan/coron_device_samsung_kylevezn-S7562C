.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method protected static ok([CC)Z
    .locals 2
    .parameter "accept"
    .parameter "c"

    .prologue
    .line 87
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 88
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 89
    const/4 v1, 0x1

    .line 93
    :goto_1
    return v1

    .line 87
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 51
    .local v0, accept:[C
    const/4 v1, 0x0

    .line 54
    .local v1, filter:Z
    move v3, p2

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 55
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_2

    .line 60
    :cond_0
    if-ne v3, p3, :cond_3

    .line 62
    const/4 v2, 0x0

    .line 83
    :cond_1
    :goto_1
    return-object v2

    .line 54
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_3
    sub-int v6, p3, p2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 67
    const-string v2, ""

    goto :goto_1

    .line 70
    :cond_4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 72
    .local v2, filtered:Landroid/text/SpannableStringBuilder;
    sub-int/2addr v3, p2

    .line 73
    sub-int/2addr p3, p2

    .line 75
    sub-int v5, p3, p2

    .line 77
    .local v5, len:I
    add-int/lit8 v4, p3, -0x1

    .local v4, j:I
    :goto_2
    if-lt v4, v3, :cond_1

    .line 78
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_5

    .line 79
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 77
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method protected abstract getAcceptedChars()[C
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 3
    .parameter "event"
    .parameter "content"

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v9, 0x30

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 102
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 103
    .local v1, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 105
    .local v2, b:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 106
    .local v6, selStart:I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 109
    .local v5, selEnd:I
    if-ltz v6, :cond_0

    if-gez v5, :cond_1

    .line 110
    :cond_0
    const/4 v5, 0x0

    move v6, v5

    .line 111
    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 114
    :cond_1
    if-eqz p4, :cond_4

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    .line 115
    .local v3, i:I
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 116
    .local v4, repeatCount:I
    :cond_2
    if-nez v4, :cond_5

    .line 117
    if-eqz v3, :cond_7

    .line 118
    if-eq v6, v5, :cond_3

    .line 119
    invoke-static {p2, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 122
    :cond_3
    int-to-char v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v5, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 124
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    move v7, v8

    .line 144
    :goto_1
    return v7

    .end local v3           #i:I
    .end local v4           #repeatCount:I
    :cond_4
    move v3, v4

    .line 114
    goto :goto_0

    .line 127
    .restart local v3       #i:I
    .restart local v4       #repeatCount:I
    :cond_5
    if-ne v3, v9, :cond_7

    if-ne v4, v8, :cond_7

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, IsPassword:I
    if-eqz p1, :cond_6

    instance-of v7, p1, Landroid/widget/TextView;

    if-eqz v7, :cond_6

    move-object v7, p1

    .line 132
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isPasswordInputTypeCheck()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 133
    const/4 v0, 0x1

    .line 135
    :cond_6
    if-nez v0, :cond_7

    if-ne v6, v5, :cond_7

    if-lez v5, :cond_7

    add-int/lit8 v7, v6, -0x1

    invoke-interface {p2, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_7

    .line 137
    add-int/lit8 v7, v6, -0x1

    const/16 v9, 0x2b

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v7, v5, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 138
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    move v7, v8

    .line 139
    goto :goto_1

    .line 143
    .end local v0           #IsPassword:I
    :cond_7
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_1
.end method
