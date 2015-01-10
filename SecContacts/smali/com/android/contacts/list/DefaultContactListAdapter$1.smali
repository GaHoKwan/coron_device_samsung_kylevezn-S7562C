.class Lcom/android/contacts/list/DefaultContactListAdapter$1;
.super Ljava/lang/Object;
.source "DefaultContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 576
    sget-boolean v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callPressed:Z

    if-eqz v5, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    sget v5, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPointerY:I

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getEnableTouchScreenHeight()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 584
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    #getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$000(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 586
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 589
    .local v0, baseUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 590
    .local v3, mPhonenumber:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    #calls: Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$100(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 591
    if-eqz v3, :cond_0

    .line 594
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 595
    const-string v5, "sip"

    invoke-static {v5, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 599
    .local v4, uri:Landroid/net/Uri;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 600
    .local v2, mIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 601
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callPressed:Z

    .line 602
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    #getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$200(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 597
    .end local v2           #mIntent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    const-string v5, "tel"

    invoke-static {v5, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_1
.end method
