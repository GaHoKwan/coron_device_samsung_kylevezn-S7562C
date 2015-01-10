.class public Lcom/sec/android/app/contacts/interaction/CscReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CscReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private storeCscValue(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, contactsPreferences:Lcom/android/contacts/preference/ContactsPreferences;
    const-string v4, "type_key_max_recipient"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, type:Ljava/lang/String;
    const-string v4, "csc_pref_key_max_recipient"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, cscKey:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 31
    const-string v4, "INT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    const-string v4, "csc_pref_key_max_recipient"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 34
    .local v2, intValue:I
    const-string v4, "csc_pref_key_max_recipient"

    const-string v5, "csc_pref_key_max_recipient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v0, v2}, Lcom/android/contacts/preference/ContactsPreferences;->setRecipientLimit(I)V

    .line 39
    .end local v2           #intValue:I
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/CscReceiver;->storeCscValue(Landroid/content/Context;Landroid/content/Intent;)V

    .line 22
    return-void
.end method
