.class Lcom/android/mms/ui/MessagingPreferenceActivity$8;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const v10, 0x7f0a012c

    const/4 v9, 0x1

    .line 1563
    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    .line 1564
    .local v8, smsc_addr:Ljava/lang/String;
    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreferenceChange] SmscAddr :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :try_start_0
    const-string v0, "+"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1568
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1572
    :goto_0
    const-string v0, "-"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1573
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v1, 0x7f0a012c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1599
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 1570
    :cond_1
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1594
    :catch_0
    move-exception v7

    .line 1596
    .local v7, e:Ljava/lang/NumberFormatException;
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1577
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1578
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "smsc"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$800()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1583
    .local v6, bResult:I
    if-ne v6, v9, :cond_3

    .line 1584
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1586
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 1589
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v1, 0x7f0a012d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
