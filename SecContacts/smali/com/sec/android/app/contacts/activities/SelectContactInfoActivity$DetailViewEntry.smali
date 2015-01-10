.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
.super Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public collapseCount:I

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public kind:Ljava/lang/String;

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public type:I

.field public typeString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1051
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>(I)V

    .line 1038
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    .line 1039
    iput v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->context:Landroid/content/Context;

    .line 1048
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    .line 1052
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isEnabled:Z

    .line 1053
    return-void
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .locals 6
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1089
    new-instance v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;-><init>()V

    .line 1090
    .local v1, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    iput-wide p3, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    .line 1091
    iput-object p0, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->context:Landroid/content/Context;

    .line 1092
    iput-object p1, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1094
    iget v4, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v4, :cond_4

    :cond_0
    const-string v4, ""

    :goto_0
    iput-object v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1096
    #calls: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p2, p5, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$600(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 1098
    const-string v4, "vnd.android.cursor.item/photo"

    iget-object v5, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1099
    const v4, 0x7f0d02bf

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1102
    :cond_1
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1104
    :try_start_0
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    .line 1107
    const-string v4, ""

    iput-object v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1108
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 1109
    .local v3, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v4, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v5, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    if-ne v4, v5, :cond_2

    .line 1110
    iget-object v4, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 1112
    iget v4, v3, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    :goto_1
    return-object v1

    .line 1094
    :cond_4
    iget v4, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1115
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    :try_start_1
    iget-object v4, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1120
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #type:Lcom/android/contacts/model/AccountType$EditType;
    :catch_0
    move-exception v0

    .line 1121
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1122
    const-string v4, ""

    iput-object v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1

    .line 1125
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_6
    const-string v4, ""

    iput-object v4, v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public collapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z
    .locals 3
    .parameter "entry"

    .prologue
    .line 1057
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x0

    .line 1072
    :goto_0
    return v0

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    invoke-static {v0, v1}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    invoke-static {v1, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1063
    iget v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->type:I

    .line 1064
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1065
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1069
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    iget v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 1071
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->collapseCount:I

    .line 1072
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1036
    check-cast p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->collapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z
    .locals 5
    .parameter "entry"

    .prologue
    const/4 v0, 0x0

    .line 1077
    if-nez p1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return v0

    .line 1081
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1084
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1036
    check-cast p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)Z

    move-result v0

    return v0
.end method
