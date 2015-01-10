.class public Lcom/sec/android/app/contacts/util/ATCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ATCommandReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getContactsCount()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 66
    const-string v0, "ATCommandReceiver"

    const-string v1, "getContactsCount()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v7, 0x0

    .line 69
    .local v7, numOfContacts:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 72
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 75
    const-string v0, "ATCommandReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numOfContacts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_0
    return v7
.end method

.method private getCountToStringFormat(I)Ljava/lang/String;
    .locals 1
    .parameter "count"

    .prologue
    .line 100
    const-string v0, "0"

    .line 102
    .local v0, strCount:Ljava/lang/String;
    if-lez p1, :cond_0

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method private getSIMCount()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v0, "ATCommandReceiver"

    const-string v1, "getSIMCount()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v7, 0x0

    .line 86
    .local v7, numOfSIMContacts:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 92
    const-string v0, "ATCommandReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numOfSIMContacts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    return v7
.end method

.method private sendResponse(I)V
    .locals 6
    .parameter "request"

    .prologue
    .line 109
    const-string v3, "ATCommandReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendResponse() request = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.BCS_RESPONSE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    return-void

    .line 114
    :pswitch_0
    const-string v3, "ATCommandReceiver"

    const-string v4, "sendResponse() - getContactsCount()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->getContactsCount()I

    move-result v0

    .line 116
    .local v0, contactsCount:I
    const-string v3, "response"

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->getCountToStringFormat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 119
    .end local v0           #contactsCount:I
    :pswitch_1
    const-string v3, "ATCommandReceiver"

    const-string v4, "sendResponse() - getContactsCount()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->getSIMCount()I

    move-result v2

    .line 121
    .local v2, simCount:I
    const-string v3, "response"

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->getCountToStringFormat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    const-string v2, "ATCommandReceiver"

    const-string v3, "Received BCS_REQUEST"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 48
    .local v1, data:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 49
    const-string v2, "ATCommandReceiver"

    const-string v3, "There is no extras"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v2, "command"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, command:Ljava/lang/String;
    const-string v2, "ATCommandReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BCS_REQUEST : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v2, "AT+CTACT=NR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->sendResponse(I)V

    goto :goto_0

    .line 58
    :cond_1
    const-string v2, "AT+CSMCT=NR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/util/ATCommandReceiver;->sendResponse(I)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v2, "ATCommandReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invaild Command & Param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
