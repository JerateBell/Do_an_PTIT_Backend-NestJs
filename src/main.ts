import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';

async function bootstrap() {
  // Fix BigInt serialization issue
  BigInt.prototype.toJSON = function () {
    return this.toString();
  };

  const app = await NestFactory.create(AppModule);

  const config = new DocumentBuilder()
    .setTitle('Travoloke API')
    .setDescription('The Travoloke API description')
    .setVersion('0.1')
    .build();

  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('api', app, document);

  await app.listen(process.env.PORT ?? 3000);
}
bootstrap();
