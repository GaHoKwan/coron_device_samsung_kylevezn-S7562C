.class public Lcom/android/mms/util/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/TelephonyUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasOnlyPhoneDigit(Ljava/lang/String;)Z
    .locals 7
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v4

    .line 86
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    move v1, v3

    .line 88
    .local v1, idx:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 91
    .local v2, length:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 94
    .local v0, ch:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #ch:C
    .end local v1           #idx:I
    .end local v2           #length:I
    :cond_2
    move v1, v4

    .line 87
    goto :goto_1

    .restart local v1       #idx:I
    .restart local v2       #length:I
    :cond_3
    move v4, v3

    .line 98
    goto :goto_0
.end method

.method public static isCallOffhook()Z
    .locals 6

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 141
    .local v1, isOnCall:Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 142
    .local v2, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_1

    .line 143
    const-string v4, "Mms/TelephonyUtils"

    const-string v5, "isCallOffhook: No TELEPHONY_SERVICE found"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    .line 151
    :goto_0
    if-nez v1, :cond_0

    .line 152
    const-string v4, "phone"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 153
    .local v3, phoneServ2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 154
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v1

    .line 165
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return v1

    .line 146
    .restart local v2       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 160
    .end local v2           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "Mms/TelephonyUtils"

    const-string v5, "isCallOffhook: RemoteException ignored"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isFdnEnabled()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/util/TelephonyUtils;->isFdnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isFdnEnabled(I)Z
    .locals 4
    .parameter "simSlot"

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 64
    .local v1, enabled:Z
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 65
    :try_start_0
    const-string v3, "phoneext2"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v2

    .line 66
    .local v2, phone:Lcom/android/internal/telephony/ITelephonyExt;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z

    move-result v1

    .line 78
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_0
    return v1

    .line 68
    :cond_0
    const-string v3, "phoneext"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v2

    .line 69
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephonyExt;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 72
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseIncorrectCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "incorrectCallNumber"

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-static {p0}, Lcom/android/mms/util/TelephonyUtils;->hasOnlyPhoneDigit(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    .end local p0
    :goto_0
    return-object p0

    .line 107
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .line 108
    .local v0, callNumber:Landroid/text/SpannableString;
    const/4 v3, 0x0

    .line 109
    .local v3, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 111
    .local v1, parsedCallNumber:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    .end local v0           #callNumber:Landroid/text/SpannableString;
    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    .restart local v0       #callNumber:Landroid/text/SpannableString;
    const/16 v4, 0xf

    invoke-static {v0, v4}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/text/SpannableString;I)V

    .line 113
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v5, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v6, v4, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 116
    move-object v1, p0

    .line 119
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 120
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #parsedCallNumber:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 122
    .restart local v1       #parsedCallNumber:Ljava/lang/String;
    const/4 v4, 0x1

    const-string v5, "tel:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 123
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 125
    .local v2, sep:I
    if-ltz v2, :cond_1

    .line 126
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v4, "Mms/TelephonyUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sep : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " After parsedCallNumber : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #sep:I
    :cond_2
    move-object p0, v1

    .line 133
    goto :goto_0
.end method
