.class Lcom/android/contacts/editor/KindSectionView$2;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 180
    return-void
.end method
