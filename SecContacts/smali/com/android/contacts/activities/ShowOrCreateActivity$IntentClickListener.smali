.class Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ShowOrCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentClickListener"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mParent:Landroid/app/Activity;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 399
    return-void
.end method
