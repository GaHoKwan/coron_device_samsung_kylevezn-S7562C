.class public Lcom/sec/android/app/contacts/group/EmergencyServiceCreationDialogFragment;
.super Lcom/android/contacts/interactions/GroupNameDialogFragment;
.source "EmergencyServiceCreationDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 3
    .parameter "fragmentManager"

    .prologue
    .line 41
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/group/EmergencyServiceCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;J)V

    .line 42
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;J)V
    .locals 6
    .parameter "fragmentManager"
    .parameter "serviceNumber"
    .parameter "EmergencyServiceId"

    .prologue
    .line 45
    new-instance v1, Lcom/sec/android/app/contacts/group/EmergencyServiceCreationDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/group/EmergencyServiceCreationDialogFragment;-><init>()V

    .line 46
    .local v1, dialog:Lcom/sec/android/app/contacts/group/EmergencyServiceCreationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "serviceNumber"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "serviceID"

    invoke-virtual {v0, v3, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    :try_start_0
    const-string v3, "createGroup"

    invoke-virtual {v1, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "EmergencyServiceCreationDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f0d0289

    return v0
.end method

.method protected initializeGroupLabelEditText(Landroid/widget/EditText;)V
    .locals 7
    .parameter "editText"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, arguments:Landroid/os/Bundle;
    const-string v4, "serviceNumber"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, originalNum:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 66
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0e0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 67
    .local v1, maxLength:I
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 70
    const/high16 v4, 0x200

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 71
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 72
    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 76
    :cond_0
    return-void
.end method

.method protected isTitleDuplicated(Ljava/lang/String;)Z
    .locals 3
    .parameter "inputNum"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "serviceNumber"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, originalNum:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected onCompleted(Ljava/lang/String;)V
    .locals 10
    .parameter "groupLabel"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 85
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, arguments:Landroid/os/Bundle;
    const-string v6, "serviceID"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 89
    .local v2, serviceID:J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 90
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 91
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v6, "number"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "content://com.android.contacts/emergency/service"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 102
    :goto_0
    return-void

    .line 96
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 97
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v6, "number"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/emergency/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 100
    .local v4, targetUri:Landroid/net/Uri;
    invoke-virtual {v1, v4, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
