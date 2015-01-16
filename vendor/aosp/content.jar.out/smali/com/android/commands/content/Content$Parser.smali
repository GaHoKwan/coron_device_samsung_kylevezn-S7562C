.class Lcom/android/commands/content/Content$Parser;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation


# static fields
.field private static final ARGUMENT_BIND:Ljava/lang/String; = "--bind"

.field private static final ARGUMENT_DELETE:Ljava/lang/String; = "delete"

.field private static final ARGUMENT_INSERT:Ljava/lang/String; = "insert"

.field private static final ARGUMENT_PREFIX:Ljava/lang/String; = "--"

.field private static final ARGUMENT_PROJECTION:Ljava/lang/String; = "--projection"

.field private static final ARGUMENT_QUERY:Ljava/lang/String; = "query"

.field private static final ARGUMENT_SORT:Ljava/lang/String; = "--sort"

.field private static final ARGUMENT_UPDATE:Ljava/lang/String; = "update"

.field private static final ARGUMENT_URI:Ljava/lang/String; = "--uri"

.field private static final ARGUMENT_WHERE:Ljava/lang/String; = "--where"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "d"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "f"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final TYPE_LONG:Ljava/lang/String; = "l"

.field private static final TYPE_STRING:Ljava/lang/String; = "s"


# instance fields
.field private final mTokenizer:Lcom/android/commands/content/Content$Tokenizer;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Lcom/android/commands/content/Content$Tokenizer;

    invoke-direct {v0, p1}, Lcom/android/commands/content/Content$Tokenizer;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    .line 128
    return-void
.end method

.method private argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "argument"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value for argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_1
    return-object v0
.end method

.method private parseBindValue(Landroid/content/ContentValues;)V
    .locals 9
    .parameter "values"

    .prologue
    .line 245
    iget-object v6, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, argument:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding not well formed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 249
    :cond_0
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 250
    .local v2, firstColonIndex:I
    if-gez v2, :cond_1

    .line 251
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding not well formed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 253
    :cond_1
    const-string v6, ":"

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 254
    .local v3, secondColonIndex:I
    if-gez v3, :cond_2

    .line 255
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding not well formed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 257
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, column:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, type:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, value:Ljava/lang/String;
    const-string v6, "s"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    invoke-virtual {p1, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 262
    :cond_3
    const-string v6, "b"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 264
    :cond_4
    const-string v6, "i"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "l"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 265
    :cond_5
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 266
    :cond_6
    const-string v6, "f"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "d"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 267
    :cond_7
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 269
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private parseDeleteCommand()Lcom/android/commands/content/Content$DeleteCommand;
    .locals 6

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 177
    .local v2, where:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .local v0, argument:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 178
    const-string v3, "--uri"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 180
    :cond_0
    const-string v3, "--where"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 183
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_2
    if-nez v1, :cond_3

    .line 187
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_3
    new-instance v3, Lcom/android/commands/content/Content$DeleteCommand;

    invoke-direct {v3, v1, v2}, Lcom/android/commands/content/Content$DeleteCommand;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object v3
.end method

.method private parseInsertCommand()Lcom/android/commands/content/Content$InsertCommand;
    .locals 6

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v2, values:Landroid/content/ContentValues;
    :goto_0
    iget-object v3, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .local v0, argument:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 155
    const-string v3, "--uri"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_0
    const-string v3, "--bind"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-direct {p0, v2}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 160
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_2
    if-nez v1, :cond_3

    .line 164
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 167
    :cond_3
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 168
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bindings not specified. Did you specify --bind argument(s)?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    :cond_4
    new-instance v3, Lcom/android/commands/content/Content$InsertCommand;

    invoke-direct {v3, v1, v2}, Lcom/android/commands/content/Content$InsertCommand;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-object v3
.end method

.method private parseUpdateCommand()Lcom/android/commands/content/Content$UpdateCommand;
    .locals 7

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 196
    .local v3, where:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v2, values:Landroid/content/ContentValues;
    :goto_0
    iget-object v4, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .local v0, argument:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 198
    const-string v4, "--uri"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 200
    :cond_0
    const-string v4, "--where"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 202
    :cond_1
    const-string v4, "--bind"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    invoke-direct {p0, v2}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 205
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_3
    if-nez v1, :cond_4

    .line 209
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :cond_4
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 213
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bindings not specified. Did you specify --bind argument(s)?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_5
    new-instance v4, Lcom/android/commands/content/Content$UpdateCommand;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/commands/content/Content$UpdateCommand;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public parseCommand()Lcom/android/commands/content/Content$Command;
    .locals 5

    .prologue
    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, operation:Ljava/lang/String;
    const-string v2, "insert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseInsertCommand()Lcom/android/commands/content/Content$InsertCommand;

    move-result-object v2

    .line 147
    .end local v1           #operation:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 135
    .restart local v1       #operation:Ljava/lang/String;
    :cond_0
    const-string v2, "delete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseDeleteCommand()Lcom/android/commands/content/Content$DeleteCommand;

    move-result-object v2

    goto :goto_0

    .line 137
    :cond_1
    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseUpdateCommand()Lcom/android/commands/content/Content$UpdateCommand;

    move-result-object v2

    goto :goto_0

    .line 139
    :cond_2
    const-string v2, "query"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/android/commands/content/Content$Parser;->parseQueryCommand()Lcom/android/commands/content/Content$QueryCommand;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1           #operation:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "usage: adb shell content [subcommand] [options]\n\nusage: adb shell content insert --uri <URI> --bind <BINDING> [--bind <BINDING>...]\n  <URI> a content provider URI.\n  <BINDING> binds a typed value to a column and is formatted:\n  <COLUMN_NAME>:<TYPE>:<COLUMN_VALUE> where:\n  <TYPE> specifies data type such as:\n  b - boolean, s - string, i - integer, l - long, f - float, d - double\n  Note: Omit the value for passing an empty string, e.g column:s:\n  Example:\n  # Add \"new_setting\" secure setting with value \"new_value\".\n  adb shell content insert --uri content://settings/secure --bind name:s:new_setting --bind value:s:new_value\n\nusage: adb shell content update --uri <URI> [--where <WHERE>]\n  <WHERE> is a SQL style where clause in quotes (You have to escape single quotes - see example below).\n  Example:\n  # Change \"new_setting\" secure setting to \"newer_value\".\n  adb shell content update --uri content://settings/secure --bind value:s:newer_value --where \"name=\'new_setting\'\"\n\nusage: adb shell content delete --uri <URI> --bind <BINDING> [--bind <BINDING>...] [--where <WHERE>]\n  Example:\n  # Remove \"new_setting\" secure setting.\n  adb shell content delete --uri content://settings/secure --where \"name=\'new_setting\'\"\n\nusage: adb shell content query --uri <URI> [--projection <PROJECTION>] [--where <WHERE>] [--sort <SORT_ORDER>]\n  <PROJECTION> is a list of colon separated column names and is formatted:\n  <COLUMN_NAME>[:<COLUMN_NAME>...]\n  <SORT_OREDER> is the order in which rows in the result should be sorted.\n  Example:\n  # Select \"name\" and \"value\" columns from secure settings where \"name\" is equal to \"new_setting\" and sort the result by name in ascending order.\n  adb shell content query --uri content://settings/secure --projection name:value --where \"name=\'new_setting\'\" --sort \"name ASC\"\n\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERROR] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseQueryCommand()Lcom/android/commands/content/Content$QueryCommand;
    .locals 8

    .prologue
    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 222
    .local v1, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 223
    .local v2, sort:Ljava/lang/String;
    const/4 v4, 0x0

    .line 224
    .local v4, where:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .local v0, argument:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 225
    const-string v5, "--uri"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 227
    :cond_0
    const-string v5, "--where"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 229
    :cond_1
    const-string v5, "--sort"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 231
    :cond_2
    const-string v5, "--projection"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 232
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[\\s]*:[\\s]*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 234
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 237
    :cond_4
    if-nez v3, :cond_5

    .line 238
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 241
    :cond_5
    new-instance v5, Lcom/android/commands/content/Content$QueryCommand;

    invoke-direct {v5, v3, v1, v4, v2}, Lcom/android/commands/content/Content$QueryCommand;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method
