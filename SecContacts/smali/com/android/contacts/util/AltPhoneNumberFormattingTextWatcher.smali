.class public Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;
.super Landroid/telephony/PhoneNumberFormattingTextWatcher;
.source "AltPhoneNumberFormattingTextWatcher.java"


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mLastFormattedStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;->mCountryCode:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .parameter "s"

    .prologue
    const/4 v12, 0x1

    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 27
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;->mLastFormattedStr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v12, :cond_1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 32
    .local v9, index:I
    if-lez v9, :cond_1

    .line 33
    add-int/lit8 v0, v9, 0x1

    invoke-interface {p1, v9, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 35
    .end local v9           #index:I
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 78
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 38
    :cond_3
    :try_start_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    .line 42
    .local v11, originalPos:I
    if-nez v11, :cond_4

    .line 43
    const/4 v8, 0x0

    .line 47
    .local v8, getCharPos:I
    :goto_1
    invoke-interface {p1, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    .line 49
    .local v10, inputChar:C
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;->mLastFormattedStr:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;->mLastFormattedStr:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;->mLastFormattedStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 53
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 59
    .local v6, changedPos:I
    if-nez v6, :cond_5

    .line 60
    const/4 v7, 0x0

    .line 61
    .local v7, getChangedCharPos:I
    if-ne v11, v12, :cond_6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_6

    .line 62
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 45
    .end local v6           #changedPos:I
    .end local v7           #getChangedCharPos:I
    .end local v8           #getCharPos:I
    .end local v10           #inputChar:C
    :cond_4
    add-int/lit8 v8, v11, -0x1

    .restart local v8       #getCharPos:I
    goto :goto_1

    .line 66
    .restart local v6       #changedPos:I
    .restart local v10       #inputChar:C
    :cond_5
    add-int/lit8 v7, v6, -0x1

    .line 69
    .restart local v7       #getChangedCharPos:I
    :cond_6
    invoke-interface {p1, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-eq v10, v0, :cond_2

    .line 70
    add-int/lit8 v0, v7, 0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v7, 0x1

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-ne v10, v0, :cond_2

    .line 71
    add-int/lit8 v0, v6, 0x1

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 76
    .end local v6           #changedPos:I
    .end local v7           #getChangedCharPos:I
    .end local v8           #getCharPos:I
    .end local v10           #inputChar:C
    .end local v11           #originalPos:I
    :cond_7
    invoke-super {p0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
