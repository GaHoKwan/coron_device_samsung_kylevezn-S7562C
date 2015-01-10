.class Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateFormatObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 855
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 856
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 858
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateFormatObserver-onChange() :"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$DateFormatObserver;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->updateDateFormat()V
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$300(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 860
    return-void
.end method
