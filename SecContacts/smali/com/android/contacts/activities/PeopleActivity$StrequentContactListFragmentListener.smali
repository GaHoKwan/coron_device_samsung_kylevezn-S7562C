.class final Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrequentContactListFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2322
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2322
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 2326
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2327
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #calls: Lcom/android/contacts/activities/PeopleActivity;->setupFavoriteDetailFragment(Landroid/net/Uri;)V
    invoke-static {v1, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$2600(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V

    .line 2328
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-object p1, v1, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 2338
    :goto_0
    return-void

    .line 2331
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2332
    .local v0, viewIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2333
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2335
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
