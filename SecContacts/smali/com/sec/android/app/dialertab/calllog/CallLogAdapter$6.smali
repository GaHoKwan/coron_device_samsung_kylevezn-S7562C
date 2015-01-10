.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field final synthetic val$city_Id:Ljava/lang/String;

.field final synthetic val$cnapName:Ljava/lang/String;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$firstName:Ljava/lang/String;

.field final synthetic val$formattedNumber:Ljava/lang/CharSequence;

.field final synthetic val$lastName:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$formattedNumber:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$countryIso:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$cnapName:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$firstName:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$lastName:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$city_Id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1622
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$number:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1623
    const-string v2, "sip"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$number:Ljava/lang/String;

    invoke-static {v2, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1629
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    const/4 v0, 0x0

    .line 1631
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "dcm_jcontacts_package_name"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1632
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1636
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const-string v2, "feature_cnam"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1637
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$cnapName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$firstName:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$lastName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1638
    const-string v2, "name"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$cnapName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1649
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$city_Id:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1650
    const-string v2, "cnam"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1651
    const-string v2, "postal"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$city_Id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    const-string v2, "postal_type"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1655
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1658
    return-void

    .line 1625
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    const-string v2, "tel"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$500(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$number:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$formattedNumber:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$countryIso:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 1634
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 1641
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$firstName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$firstName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$firstName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1642
    const-string v2, "name"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$firstName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1644
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$lastName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$lastName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1645
    const-string v2, "data3"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$6;->val$lastName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
