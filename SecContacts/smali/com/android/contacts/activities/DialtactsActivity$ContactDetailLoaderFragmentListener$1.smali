.class Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

.field final synthetic val$result:Lcom/android/contacts/ContactLoader$Result;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2889
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;->this$1:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    iput-object p2, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;->this$1:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2898
    :cond_0
    :goto_0
    return-void

    .line 2896
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;->this$1:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$4800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;->this$1:Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$4800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method
