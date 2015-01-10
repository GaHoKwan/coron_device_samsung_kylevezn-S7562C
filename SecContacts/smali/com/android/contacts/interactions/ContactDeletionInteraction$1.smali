.class Lcom/android/contacts/interactions/ContactDeletionInteraction$1;
.super Ljava/lang/Object;
.source "ContactDeletionInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ContactDeletionInteraction;->showDialog(ILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;->this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x1

    .line 348
    const/16 v1, 0x52

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    .line 353
    const/4 v0, 0x0

    goto :goto_0
.end method
