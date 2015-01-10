.class Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$8;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$8;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$8$1$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$8$1$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->showChild(Ljava/lang/Runnable;Z)V

    .line 785
    return-void
.end method
